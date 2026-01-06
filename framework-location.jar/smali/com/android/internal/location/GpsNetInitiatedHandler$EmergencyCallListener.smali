.class Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "GpsNetInitiatedHandler.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
.implements Landroid/telephony/TelephonyCallback$PreciseCallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .line 136
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged(): state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyCallStart(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    .line 142
    :cond_1
    return-void

    .line 146
    :cond_2
    if-nez p1, :cond_6

    .line 148
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyCallEnd(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 154
    :cond_4
    :goto_0
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallCallback(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;->onEmergencyCallEnd()V

    .line 163
    :cond_6
    return-void
.end method

.method public whitelist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 109
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, p2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencySubId(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 112
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 116
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutgoingEmergencyCall(): inEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallCallback(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;->onEmergencyCallStart(I)V

    .line 118
    return-void
.end method

.method public whitelist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 125
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    const-string v0, "GpsNetInitiatedHandler"

    const-string v1, "onOutgoingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 130
    return-void
.end method

.method public whitelist onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 3
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 169
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v0

    .line 171
    .local v0, "fgCallState":I
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreciseCallStateChanged. fgCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GpsNetInitiatedHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$misEmergencyCallActive(Lcom/android/internal/location/GpsNetInitiatedHandler;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyCallStart(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    .line 176
    .end local v0    # "fgCallState":I
    :cond_1
    return-void
.end method
