.class Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onRetryTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-nez p1, :cond_0

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->setEndCauseforSatelliteBigdata(I)V

    :cond_0
    return-void
.end method
