.class Lcom/android/internal/telephony/uicc/UiccProfile$6;
.super Ljava/lang/Object;
.source "UiccProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;->makeVzwSsuNetworkLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3311
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3315
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Reboot due to VZW SSU Network Lock"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 3316
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/internal/telephony/uicc/UiccProfile$6$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$6$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile$6;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3323
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 3325
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Do not reboot device"

    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3327
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3330
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmSsuNetworkLockDialogDisplayed(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    :cond_2
    return-void
.end method
