.class Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceReportingSecurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 165
    const-string p0, "DeviceReportingSecurityChecker"

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive mSimStateReceiver intent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetmTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    .line 167
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetmTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive mSimStateReceiver simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    const-string p1, "SIM state is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {p2}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfputmIsSim(Z)V

    goto :goto_2

    .line 170
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$smisTMOSIM()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$smisSPRSIM()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 173
    :cond_3
    const-string p1, "SIM card is not TMO\'s Or SPR\'s SIM!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p2}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfputmIsSim(Z)V

    goto :goto_2

    .line 171
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfputmIsSim(Z)V

    .line 180
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsSim: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetmIsSim()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
