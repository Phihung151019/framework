.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;
.super Landroid/os/Handler;
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

    .line 538
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 541
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mprocessPendingMessage(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    return-void
.end method
