import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {

  build() {
    Column() {
      Button('01-layout')
        .onClick(() => {
          router.pushUrl({
            url: "pages/ui/01-layout/Layout"
          })
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}