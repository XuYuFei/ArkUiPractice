import * as Builder from './Builder'
import { Card } from '../../../../common/component/Card'
import { Title } from '../../../../common/component/Title'


@Component
export default struct Index {
  @State isShow: boolean = false

  build() {

    Column() {
      Text('层叠布局 Stack')
        .fontColor(Color.Gray)
        .padding({ left: 20, right: 20 })
        .onClick(() => {
          this.isShow = !this.isShow
        })


      if (this.isShow) {
        Scroll() {
          Column({ space: 10 }) {
            Title({ title: '开发布局' })
            Card({ title: '开发布局', component: Builder.LayoutDemo })

            Title({ title: '对齐方式' })
            Card({ title: 'TopStart', component: Builder.AlignTopStart })
            Card({ title: 'Top', component: Builder.AlignTop })
            Card({ title: 'TopEnd', component: Builder.AlignTopEnd })
            Card({ title: 'Start', component: Builder.AlignStart })
            Card({ title: 'Center', component: Builder.AlignCenter })
            Card({ title: 'End', component: Builder.AlignEnd })
            Card({ title: 'BottomStart', component: Builder.AlignBottomStart })
            Card({ title: 'Bottom', component: Builder.AlignBottom })
            Card({ title: 'BottomEnd', component: Builder.AlignBottomEnd })

            Title({ title: 'Z序控制' })
            Card({ title: 'Z序控制', component: Builder.ZIndex })

            Title({ title: '场景示例' })
            Card({ title: '场景示例', component: Builder.StackDemo })
          }

        }
        .padding(20)
        .height(600)
      }
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}