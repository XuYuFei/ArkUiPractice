import { BuilderNode, curves, UIContext } from '@kit.ArkUI'


@Component
export struct Card {
  @Require @Prop title: string
  @State isPresent: boolean = false

  @Builder
  slot() {
    Text('暂无数据')
  }

  @BuilderParam component: () => void = this.slot

  build() {

    Column() {
      Text(this.title)
        .fontSize(14)
        .openContentCover()
    }

  }

  @Styles
  openContentCover() {
    .width('100%')
    .padding({
      top: 10,
      right: 20,
      bottom: 10,
      left: 20
    })
    .border({
      width: 1,
      color: '#ffeae8e8'
    })
    .borderRadius(10)
    .bindContentCover(this.isPresent, this.componentBuilder(), {
      modalTransition: ModalTransition.DEFAULT,
      onDisappear: () => {
        if (this.isPresent) {
          this.isPresent = !this.isPresent;
        }
      }
    })
    .onClick(() => {
      this.isPresent = !this.isPresent;
    })
  }

  @Builder
  componentBuilder() {
    Column() {
      Text(this.title)
        .margin({ bottom: 30 })
        .alignSelf(ItemAlign.Start)

      this.component()

      Button('关闭')
        .onClick(() => {
          this.isPresent = !this.isPresent;
        })
    }
    .padding({
      top: 50,
      bottom: 30,
      right: 20,
      left: 20
    })
    .size({ width: '100%', height: '100%' })
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(0xf5f5f5)
    // 通过转场动画实现出现消失转场动画效果
    .transition(
      TransitionEffect.translate({ y: 1000 })
        .animation(
          {
            curve: curves.springMotion(0.6, 0.8)
          }
        )
    )
  }
}