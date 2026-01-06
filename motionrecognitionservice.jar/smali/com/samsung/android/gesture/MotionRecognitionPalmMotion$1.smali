.class Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 369
    const-string v0, "ResponseAxT9Info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fputmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Z)V

    goto :goto_0

    .line 371
    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmSettingsObserver(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Landroid/database/ContentObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 374
    :cond_1
    :goto_0
    return-void
.end method
