.class Lcom/android/internal/telephony/TelephonyAdminReceiver$1;
.super Landroid/database/ContentObserver;
.source "TelephonyAdminReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/TelephonyAdminReceiver;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyAdminReceiver;Landroid/os/Handler;)V
    .locals 0
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

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 3

    .line 64
    const-string p1, "RAMPART_BLOCKED_2G_NETWORK updated"

    const-string v0, "TelephonyAdminReceiver"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$misDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z

    move-result p1

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update allowed network types with AutoBlocker. disallow2gByAutoBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fputmDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;Z)V

    .line 71
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisallowCellular2gRestriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmDisallowCellular2gRestriction(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Disallow2gByAutoBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "disallow_2g"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isAllowedNetworkTypesLoadedFromDb()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmDisallowCellular2gRestriction(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;->this$0:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
