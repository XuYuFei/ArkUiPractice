import { Card } from "../../../../common/component/Card"
import { CommonRoutePage } from "../../../../common/component/CommonRoutePage"
import { Title } from "../../../../common/component/Title"
import { UiModule } from "../../../../common/component/UiModule"
import { Anchor, Anchor2, Anchor3, Anchor4, Anchor5, Anchor6, Anchor7 } from "./Builder"

@Builder
export function RelativeContainerPageBuilder(name: string, param: string) {
  CommonRoutePage({
    name,
    value: param,
    context: RelativeContainerBuilder
  })
}


@Builder
function RelativeContainerBuilder() {
  Index()
}

@Preview
@Component
export default struct Index {
  @Provide title: string = '相对布局 RelativeContainer'
  @Provide show: boolean = true

  build() {
    UiModule({
      content: this.content
    })
  }

  @Builder
  content() {
    Title({ title: '锚点设置' })
    Card({ title: '父组件为锚点', component: Anchor })
    Card({ title: '以兄弟元素为锚点', component: Anchor2 })
    Card({ title: '子组件锚点任意选择', component: Anchor3 })
    Card({ title: '设置相对于锚点点对齐位置', component: Anchor4 })
    Card({ title: '子组件位置偏移', component: Anchor5 })
    Card({ title: '多种组件对齐布局', component: Anchor6 })
    Card({ title: '组件尺寸', component: Anchor7 })
  }
}