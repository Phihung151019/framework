.class public interface abstract Landroidx/car/app/hardware/common/CarSetOperationStatusCallback;
.super Ljava/lang/Object;
.source "CarSetOperationStatusCallback.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/common/CarSetOperationStatusCallback$StatusCode;
    }
.end annotation


# static fields
.field public static final OPERATION_STATUS_FEATURE_SETTING_NOT_ALLOWED:I = 0x4

.field public static final OPERATION_STATUS_FEATURE_TEMPORARILY_UNAVAILABLE:I = 0x3

.field public static final OPERATION_STATUS_FEATURE_UNIMPLEMENTED:I = 0x1

.field public static final OPERATION_STATUS_FEATURE_UNSUPPORTED:I = 0x2

.field public static final OPERATION_STATUS_ILLEGAL_CAR_HARDWARE_STATE:I = 0x7

.field public static final OPERATION_STATUS_INSUFFICIENT_PERMISSION:I = 0x6

.field public static final OPERATION_STATUS_SUCCESS:I = 0x0

.field public static final OPERATION_STATUS_UNSUPPORTED_VALUE:I = 0x5

.field public static final OPERATION_STATUS_UPDATE_TIMEOUT:I = 0x8


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "statusCode"    # I

    .line 119
    packed-switch p0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid status code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    const-string v0, "OPERATION_STATUS_UPDATE_TIMEOUT"

    return-object v0

    .line 135
    :pswitch_1
    const-string v0, "OPERATION_STATUS_ILLEGAL_CAR_HARDWARE_STATE"

    return-object v0

    .line 133
    :pswitch_2
    const-string v0, "OPERATION_STATUS_INSUFFICIENT_PERMISSION"

    return-object v0

    .line 131
    :pswitch_3
    const-string v0, "OPERATION_STATUS_UNSUPPORTED_VALUE"

    return-object v0

    .line 129
    :pswitch_4
    const-string v0, "OPERATION_STATUS_FEATURE_SETTING_NOT_ALLOWED"

    return-object v0

    .line 127
    :pswitch_5
    const-string v0, "OPERATION_STATUS_FEATURE_TEMPORARILY_UNAVAILABLE"

    return-object v0

    .line 125
    :pswitch_6
    const-string v0, "OPERATION_STATUS_FEATURE_UNSUPPORTED"

    return-object v0

    .line 123
    :pswitch_7
    const-string v0, "OPERATION_STATUS_FEATURE_UNIMPLEMENTED"

    return-object v0

    .line 121
    :pswitch_8
    const-string v0, "OPERATION_STATUS_SUCCESS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onSetCarClimateStateCabinTemperature(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 177
    return-void
.end method

.method public onSetCarClimateStateDefroster(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 267
    return-void
.end method

.method public onSetCarClimateStateElectricDefroster(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 285
    return-void
.end method

.method public onSetCarClimateStateFanDirection(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 195
    return-void
.end method

.method public onSetCarClimateStateFanSpeedLevel(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 186
    return-void
.end method

.method public onSetCarClimateStateHvacAc(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 159
    return-void
.end method

.method public onSetCarClimateStateHvacAutoMode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 249
    return-void
.end method

.method public onSetCarClimateStateHvacAutoRecirculation(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 240
    return-void
.end method

.method public onSetCarClimateStateHvacDualMode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 258
    return-void
.end method

.method public onSetCarClimateStateHvacMaxAcMode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 168
    return-void
.end method

.method public onSetCarClimateStateHvacPower(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 150
    return-void
.end method

.method public onSetCarClimateStateHvacRecirculation(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 231
    return-void
.end method

.method public onSetCarClimateStateMaxDefroster(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 276
    return-void
.end method

.method public onSetCarClimateStateSeatTemperatureLevel(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 204
    return-void
.end method

.method public onSetCarClimateStateSeatVentilationLevel(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 213
    return-void
.end method

.method public onSetCarClimateStateSteeringWheelHeat(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 222
    return-void
.end method
