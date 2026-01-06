.class final Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;
.super Landroid/database/ContentObserver;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoBrightnessSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 770
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 771
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 772
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 778
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mcheckAutoBrightnessSetting(Lcom/samsung/android/gesture/PocketModeEvent;)V

    .line 779
    return-void
.end method
