import { RapidturtlePage } from './app.po';

describe('rapidturtle App', () => {
  let page: RapidturtlePage;

  beforeEach(() => {
    page = new RapidturtlePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('rt works!');
  });
});
