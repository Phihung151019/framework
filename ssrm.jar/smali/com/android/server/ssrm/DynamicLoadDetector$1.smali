.class Lcom/android/server/ssrm/DynamicLoadDetector$1;
.super Landroid/os/Handler;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;
    .param p2, "arg0"    # Landroid/os/Looper;
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

    .line 69
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->resumeLoadDetect()V

    .line 81
    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->onLoadDetected(I)V

    .line 78
    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring()V

    .line 75
    nop

    .line 85
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
