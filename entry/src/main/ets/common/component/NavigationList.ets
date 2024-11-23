@Component
export default struct NavigationList {
  @Prop @Require listArray: string[]
  @Prop @Require title: string
  pathInfos: NavPathStack = new NavPathStack()

  build() {
    Column() {
      Navigation(this.pathInfos) {
        List({ space: 12, initialIndex: 0 }) {
          ForEach(this.listArray, (item: string) => {
            ListItem() {
              Row() {
                this.initialLetterBuilder(item.slice(0, 1))

                Column() {
                  Text(item)
                    .fontSize(16)
                }
                .alignItems(HorizontalAlign.Start)

                Blank()

                this.rightArrowBuilder()
              }
              .listRowExtend()
            }
            .width('100%')
            .onClick(() => {
              this.pathInfos.pushPathByName(`${item}`, item)
            })
          }, (item: string) => item)
        }.listExtend().margin({ top: this.title ? 0 : 15 })
      }.navigationExtend(this.title)
    }.columnExtend()
  }

  @Builder
  initialLetterBuilder(letter: string) {
    Row() {
      Text(letter)
        .fontColor(Color.White)
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
    }
    .width(30)
    .height(30)
    .backgroundColor('#a8a8a8')
    .margin({ right: 20 })
    .borderRadius(20)
    .justifyContent(FlexAlign.Center)
  }

  @Builder
  rightArrowBuilder() {
    Row()
      .width(12)
      .height(12)
      .margin({ right: 15 })
      .border({
        width: { top: 2, right: 2 },
        color: 0xcccccc
      })
      .rotate({ angle: 45 })
  }
}


@Extend(Row)
function listRowExtend() {
  .width('90%')
  .borderRadius(15)
  .shadow({ radius: 100, color: '#ededed' })
  .alignItems(VerticalAlign.Center)
  .padding({ left: 15, top: 15, bottom: 15 })
  .backgroundColor(Color.White)
}

@Extend(List)
function listExtend() {
  .listDirection(Axis.Vertical)
  .edgeEffect(EdgeEffect.Spring)
  .sticky(StickyStyle.Header)
  .chainAnimation(false)
  .width('100%')
}

@Extend(Navigation)
function navigationExtend(title: string) {
  .width('100%')
  .title(title ? title : undefined)
  .mode(NavigationMode.Auto)
}

@Extend(Column)
function columnExtend() {
  .width('100%')
  .height('100%')
  .backgroundColor(0xf4f4f5)
}
