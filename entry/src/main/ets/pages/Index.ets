import NavigationList from '../common/component/NavigationList';

@Entry
@Component
struct Index {
  private title: string = 'ArkUI'
  private listArray: string[] = ['Layout']

  build() {
    Stack() {
      NavigationList({
        title: this.title,
        listArray: this.listArray
      })
    }
  }
}