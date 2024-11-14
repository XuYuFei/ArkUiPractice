import { UiModule } from "../../../../common/component/UiModule"
import * as UiBuilder from './Builder'
import { Card } from '../../../../common/component/Card'
import { Title } from '../../../../common/component/Title'

@Preview
@Component
export default struct Index {
  @Provide title: string = '弹性布局 Flex'
  @Provide show: boolean = true

  @Builder
  content() {
    Title({ title: '布局方向' })
    Card({ title: 'FlexDirection.Row', component: UiBuilder.FlexDirectionRow })
    Card({ title: 'FlexDirection.RowReverse', component: UiBuilder.FlexDirectionRowReverse })
    Card({ title: 'FlexDirection.Column', component: UiBuilder.FlexDirectionColumn })
    Card({ title: 'FlexDirection.ColumnReverse', component: UiBuilder.FlexDirectionColumnReverse })

    Title({ title: '布局换行' })
    Card({ title: 'FlexWrap.NoWrap', component: UiBuilder.FlexWrapNoWrap })
    Card({ title: 'FlexWrap.Wrap', component: UiBuilder.FlexWrapWrap })
    Card({ title: 'FlexWrap.WrapReverse', component: UiBuilder.FlexWrapWrapReverse })

    Title({ title: '主轴对齐方式' })
    Card({ title: 'FlexAlign.Start', component: UiBuilder.FlexAlignStart })
    Card({ title: 'FlexAlign.Center', component: UiBuilder.FlexAlignCenter })
    Card({ title: 'FlexAlign.End', component: UiBuilder.FlexAlignEnd })
    Card({ title: 'FlexAlign.SpaceBetween', component: UiBuilder.FlexAlignSpaceBetween })
    Card({ title: 'FlexAlign.SpaceAround', component: UiBuilder.FlexAlignSpaceAround })
    Card({ title: 'FlexAlign.SpaceEvenly', component: UiBuilder.FlexAlignSpaceEvenly })

    Title({ title: '交叉轴对齐方式' })
    Title({ title: '容器组件设置交叉轴对齐' })
    Card({ title: 'ItemAlign.Auto', component: UiBuilder.ItemAlignAuto })
    Card({ title: 'ItemAlign.Start', component: UiBuilder.ItemAlignStart })
    Card({ title: 'ItemAlign.Center', component: UiBuilder.ItemAlignCenter })
    Card({ title: 'ItemAlign.End', component: UiBuilder.ItemAlignEnd })
    Card({ title: 'ItemAlign.Stretch', component: UiBuilder.ItemAlignStretch })
    Card({ title: 'ItemAlign.Baseline', component: UiBuilder.ItemAlignBaseline })

    Title({ title: '子元素设置交叉轴对齐' })
    Card({ title: 'alignSelf', component: UiBuilder.FlexAlignSelf })

    Title({ title: '内容对齐' })
    Card({ title: 'alignContent: FlexAlign.Start', component: UiBuilder.AlignContentStart })
    Card({ title: 'alignContent: FlexAlign.Center', component: UiBuilder.AlignContentCenter })
    Card({ title: 'alignContent: FlexAlign.End', component: UiBuilder.AlignContentEnd })
    Card({ title: 'alignContent: FlexAlign.SpaceBetween', component: UiBuilder.AlignContentSpaceBetween })
    Card({ title: 'alignContent: FlexAlign.SpaceAround', component: UiBuilder.AlignContentSpaceAround })
    Card({ title: 'alignContent: FlexAlign.SpaceEvenly', component: UiBuilder.AlignContentSpaceEvenly })

    Title({ title: '自适应拉伸' })
    Card({ title: 'flexBasis', component: UiBuilder.FlexBasis })
    Card({ title: 'flexGrow', component: UiBuilder.FlexGrow })
    Card({ title: 'flexShrink', component: UiBuilder.FlexShrink })

    Title({ title: '场景示例' })
    Card({ title: 'FlexExample', component: UiBuilder.FlexExample })
  }

  build() {
    UiModule({
      content: this.content
    })
  }
}