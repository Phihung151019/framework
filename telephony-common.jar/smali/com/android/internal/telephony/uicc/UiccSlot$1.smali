.class Lcom/android/internal/telephony/uicc/UiccSlot$1;
.super Ljava/lang/Object;
.source "UiccSlot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 801
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 807
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 809
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 812
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 814
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p2, "Reboot due to SIM swap"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 815
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/internal/telephony/uicc/UiccSlot$1$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 822
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    .line 824
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p1, "Do not reboot device"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 826
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
