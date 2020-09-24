import { Injectable, Logger } from '@nestjs/common';
import { DocumentDefinition, Model } from 'mongoose';
import { Comment } from './comment.schema';
import { InjectModel } from '@nestjs/mongoose';
import { Movie } from '../movies/movie.schema';
import { User } from '../users/user.schema';
import * as faker from 'faker';

const rateStars = [1, 2, 3, 4, 5];

function randomStar() {
  return rateStars[Math.floor(Math.random() * rateStars.length)];
}

//
//
//

const emojis =
    '😀,😃,😄,😁,😆,😅,😂,🤣,😊,🙂,🙃,😉,😌,😍,😘,😗,😙,😚,😋,😛,😝,😜,🤪,🤨,🧐,🤓,😎,🤩,😏,😒,😞,😔,😟,😕,🙁,😣,😖,😫,😩,😢,😭,😤,😠,😡,🤬,🤯,😳,😱,😨,😰,😥,😓,🤗,🤔,🤭,🤫,🤥,😶,😐,😑,😬,🙄,😯,😦,😧,😮,😲,😴,🤤,😪,😵,🤐,🤢,🤮,🤧,😷,🤒,🤕,🤑,🤠,😈,👿,👹,👺,🤡,💩,👻,💀,👽,👾,🤖,🎃,😺,😸,😹,😻,😼,😽,🙀,😿,😾,🤲,👐,🙌,👏,🤝,👍,👎,👊,✊,🤛,🤞,🤟,🤘,👌,👉,👈,👆,👇,✋,🤚,🖐,🖖,👋,🤙,💪,🖕,🙏';

const emojisArray = emojis.split(',');

function emojiRandom() {
  return emojisArray[Math.floor(Math.random() * emojisArray.length)];
}

@Injectable()
export class CommentsService {
  private readonly logger = new Logger('CommentsService');

  constructor(
      @InjectModel(Comment.name) private readonly commentModel: Model<Comment>,
      @InjectModel(Movie.name) private readonly movieModel: Model<Movie>,
      @InjectModel(User.name) private readonly userModel: Model<User>,
  ) {}

  async seed(): Promise<Comment[]> {
    if (await this.commentModel.estimatedDocumentCount() > 300) {
      this.logger.debug('Good');
      return [];
    }

    this.logger.debug(`Seed comments start`);

    const users = await this.userModel.find({});
    const movies = await this.movieModel.find({});

    const comments: Comment[] = [];

    for (const movie of movies) {
      for (const user of users) {
        const doc: Omit<DocumentDefinition<Comment>, '_id'> = {
          content: `${faker.hacker.phrase()} ${emojiRandom()}`,
          rate_star: randomStar(),
          movie: movie._id,
          user: user._id,
          is_active: true,
        };
        const created = await this.commentModel.create(doc);
        comments.push(created);
      }
    }

    this.logger.debug(`Seed comments done`);
    return comments;
  }
}
