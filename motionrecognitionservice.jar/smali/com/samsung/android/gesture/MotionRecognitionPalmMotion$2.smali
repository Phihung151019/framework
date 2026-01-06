.class Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;
.super Landroid/database/ContentObserver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    .param p2, "arg0"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 397
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->settingOnChanged(Z)V

    .line 398
    return-void
.end method
