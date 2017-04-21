import { AptPage } from './app.po';

describe('apt App', () => {
  let page: AptPage;

  beforeEach(() => {
    page = new AptPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
