.class Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;
.super Ljava/lang/Object;
.source "SemTelephonyFoldStateMonitorImpl.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOnLidStateChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;-><init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onLidStateChanged(JI)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    const-string p1, "SemOnLidStateChangedListener mHandler is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fputmFoldClosed(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;I)V

    .line 63
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p3}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p3

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmFoldClosed(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)I

    move-result p0

    const/16 v0, 0x66

    invoke-virtual {p3, v0, p0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
