.class Lcom/android/internal/telephony/CmcCallTracker$3;
.super Lcom/android/ims/ImsCall$Listener;
.source "CmcCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CmcCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CmcCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CmcCallTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1409
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker$3;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$3;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "PullListener.onCallTerminated"

    invoke-static {v0, v2, v1, p2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1414
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker$3;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1415
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker$3;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$misImsPhoneInCall(Lcom/android/internal/telephony/CmcCallTracker;)Z

    move-result p2

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$3;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method
