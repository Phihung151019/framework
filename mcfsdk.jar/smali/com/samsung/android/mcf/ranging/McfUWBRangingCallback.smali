.class public abstract Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
.super Ljava/lang/Object;
.source "McfUWBRangingCallback.java"


# static fields
.field public static final RANGING_ERROR_CANNOT_RECEIVE_CASTER_ANSWER:I = 0x1

.field public static final RANGING_ERROR_CANNOT_RECEIVE_SUBSCRIBER_CONFIG:I = 0x5

.field public static final RANGING_ERROR_CONFIRM_FAILED:I = 0x8

.field public static final RANGING_ERROR_GATT_SEND_FAILED:I = 0x7

.field public static final RANGING_ERROR_INVALID_STATUS:I = 0x9

.field public static final RANGING_ERROR_INVALID_UWB_STATUS:I = 0x4

.field public static final RANGING_ERROR_NOT_CONFIRMED:I = 0x3

.field public static final RANGING_ERROR_UWB_SESSION_SETUP_FAILED:I = 0x6

.field public static final RANGING_ERROR_VERSION_NOT_SUPPORTED:I = 0x2

.field public static final RANGING_STATUS_IN_SESSION:I = 0x1

.field public static final RANGING_STATUS_RANGING:I = 0x2

.field public static final RANGING_STATUS_READY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # I

    .line 185
    const-string v0, ")"

    packed-switch p0, :pswitch_data_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANGING("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANGING_IN_SESSION("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANGING_READY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onConfirmed(I[B)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "uwbParam"    # [B

    .line 205
    return-void
.end method

.method public onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .locals 0
    .param p1, "data"    # [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    .line 135
    return-void
.end method

.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;

    .line 164
    return-void
.end method

.method public onStatusChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "arg"    # I
    .param p3, "argString"    # Ljava/lang/String;

    .line 146
    return-void
.end method

.method public onStatusError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 155
    return-void
.end method

.method public onUWBParamChanged(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "targetDeviceAddr"    # Ljava/lang/String;
    .param p2, "param"    # [B

    .line 175
    return-void
.end method
