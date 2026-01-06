.class Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiccSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccCardBroadcastReceiver"
.end annotation


# instance fields
.field private blacklist mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method public static synthetic blacklist $r8$lambda$Yd3crd8T_FOwT1aozK3ic8dvbts(Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->handleSimRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pg8Rvgq1iv8zvz8YtgRdeNAKKzU(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1026
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1024
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->mHandlerMap:Ljava/util/HashMap;

    .line 1027
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;)V

    const-string p0, "com.samsung.intent.action.SIM_REMOVED"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist handleSimRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 1037
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string v0, "onIccSwap: get the SIM_REMOVED action"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 1038
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetdialog(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1039
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string v0, "onIccSwap: SIM_REMOVED dialog.dismiss()"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 1040
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetdialog(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1041
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fputdialog(Lcom/android/internal/telephony/uicc/UiccSlot;Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1032
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1033
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
