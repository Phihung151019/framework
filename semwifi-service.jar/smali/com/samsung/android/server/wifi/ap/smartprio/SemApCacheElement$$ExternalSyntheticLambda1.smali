.class public final synthetic Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 4
    .line 5
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->$r8$lambda$IDXhOk3opZm32aGIrMjML0fxo8Y(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;->f$1:I

    .line 18
    .line 19
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->$r8$lambda$cyNxxmVj3xLsMn5odQYrW0nJfjM(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
