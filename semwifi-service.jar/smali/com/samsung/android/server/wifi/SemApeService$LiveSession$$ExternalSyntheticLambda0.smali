.class public final synthetic Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    check-cast p1, [I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->$r8$lambda$0oyPNX3rS_i2Wme7NfY6D4GUpDw(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->$r8$lambda$CmNiDh8Y7zXD4Nsi2tiZPanOCn4(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->$r8$lambda$JEI-PIkPAomAZIIjB7DJlhI0HS0(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
