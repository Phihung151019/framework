.class Lcom/samsung/android/gesture/AdaptiveBrightnessController$3;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/AdaptiveBrightnessController;->stopService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/AdaptiveBrightnessController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$3;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 218
    const-string v0, "stopService adaptivebrightnessgo in running thread ++"

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$3;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v0, v0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "stop_ab_service"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    const-string v0, "stopService adaptivebrightnessgo in running thread --"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method
