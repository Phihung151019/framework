.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received broadcast "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsBroadcastUndelivered"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 149
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 150
    iget-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mgetMainUser(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->setUserUnlocked()V

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mprocessPendingMessage(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    :cond_1
    :goto_0
    return-void
.end method
