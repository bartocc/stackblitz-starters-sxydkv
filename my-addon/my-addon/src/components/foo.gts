import Component from '@glimmer/component';
import { LinkTo } from '@ember/routing';

interface Signature {
  Args: {
    name: string;
    age?: number;
  };
  Blocks: {
    default: [];
  };
}

export default class FooComponent extends Component<Signature> {
  foo = this.args.name;

  <template>
    I am {{this.foo}} sdf
    <LinkTo @route="index">go to home</LinkTo>
  </template>
}
