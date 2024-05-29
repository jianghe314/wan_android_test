@Entry
@Component
struct Index {
  @State isChoice:number = 0;
  build() {
      Column(){
        Column(){

        }.width('100%').height('92%').backgroundColor($r('app.color.color_blue'))
        Flex({direction:FlexDirection.Row}){
          Column(){
            Image(this.isChoice === 0 ? $r('app.media.home_blue') : $r('app.media.home_white') ).width(36).height(36)
            Text($r('app.string.home_page')).fontColor(this.isChoice == 0 ? $r('app.color.color_shallow_gray') : $r('app.color.color_blue')).fontSize('15fp')
          }.width('25%').height('100%').justifyContent(FlexAlign.Center)
            .onClick(()=>{
                this.isChoice = 0;
            })
          Column(){
            Image(this.isChoice === 1 ? $r('app.media.navi_blue') : $r('app.media.navi_white')).width(35).height(35).padding(2)
            Text($r('app.string.navi_page')).fontColor(this.isChoice == 0 ? $r('app.color.color_shallow_gray') : $r('app.color.color_blue')).fontSize('15fp')
          }.width('25%').height('100%').justifyContent(FlexAlign.Center)
            .onClick(() =>{
                this.isChoice = 1;
            })
          Column(){
            Image(this.isChoice == 2 ? $r('app.media.teach_blue') : $r('app.media.teach_white')).width(35).height(35).padding(2)
            Text($r('app.string.teach_page')).fontColor(this.isChoice == 0 ? $r('app.color.color_shallow_gray') : $r('app.color.color_blue')).fontSize('15fp')
          }.width('25%').height('100%').justifyContent(FlexAlign.Center)
            .onClick( ()=>{
              this.isChoice = 2;
            })
          Column(){
            Image(this.isChoice === 3 ? $r('app.media.mine_blue') : $r('app.media.mine_white')).width(35).height(35).padding(2)
            Text($r('app.string.mine_page')).fontColor(this.isChoice == 0 ? $r('app.color.color_shallow_gray') : $r('app.color.color_blue')).fontSize('15fp')
          }.width('25%').height('100%').justifyContent(FlexAlign.Center)
           .onClick(()=>{
              this.isChoice = 3;
           })
        }.width('100%').height('8%').backgroundColor($r('app.color.color_whit'))
      }.width('100%').height('100%')
  }
}