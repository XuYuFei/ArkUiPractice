import { CommonRoutePage } from '../../../common/component/CommonRoutePage'
import NavigationList from '../../../common/component/NavigationList'

@Preview
@Component
export default struct Layout {
  private title: string = ''
  private listArray: string[] = ['RowColumn', 'Stack', 'Flex']

  build() {
    Stack() {
      NavigationList({
        title: this.title,
        listArray: this.listArray
      })
    }
  }
}

@Builder
function LayoutBuilder() {
  Layout()
}

@Builder
export function LayoutPageBuilder(name: string, param: string) {
  CommonRoutePage({
    name,
    value: param,
    context: LayoutBuilder
  })
}