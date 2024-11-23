import * as UiBuilder from './Builder'
import { Card } from '../../../../common/component/Card'
import { Title } from '../../../../common/component/Title'
import { CommonRoutePage } from '../../../../common/component/CommonRoutePage'
import { UiModule } from '../../../../common/component/UiModule'

@Builder
export function StackPageBuilder(name: string, value: string) {
  CommonRoutePage({
    name,
    value,
    context: StackBuilder
  })
}

@Builder
function StackBuilder() {
  Index()
}

@Preview
@Component
export default struct Index {
  @Provide title: string = '层叠布局 Stack'
  @Provide show: boolean = true

  @Builder
  content() {
    Title({
      title: '开发布局'
    })
    Card({
      title: '开发布局', component: UiBuilder.LayoutDemo
    })

    Title({
      title: '对齐方式'
    })
    Card({
      title: 'TopStart', component: UiBuilder.AlignTopStart
    })
    Card({
      title: 'Top', component: UiBuilder.AlignTop
    })
    Card({
      title: 'TopEnd', component: UiBuilder.AlignTopEnd
    })
    Card({
      title: 'Start', component: UiBuilder.AlignStart
    })
    Card({
      title: 'Center', component: UiBuilder.AlignCenter
    })
    Card({
      title: 'End', component: UiBuilder.AlignEnd
    })
    Card({
      title: 'BottomStart', component: UiBuilder.AlignBottomStart
    })
    Card({
      title: 'Bottom', component: UiBuilder.AlignBottom
    })
    Card({
      title: 'BottomEnd', component: UiBuilder.AlignBottomEnd
    })

    Title({
      title: 'Z序控制'
    })
    Card({
      title: 'Z序控制', component: UiBuilder.ZIndex
    })

    Title({
      title: '场景示例'
    })
    Card({
      title: '场景示例', component: UiBuilder.StackDemo
    })
  }

  build() {
    UiModule({
      content: this.content
    })
  }
}
