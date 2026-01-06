.class public final synthetic Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    check-cast p1, [I

    .line 6
    .line 7
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->$r8$lambda$-yoDmrwUxKD0zwk_d-0heNAZ4Yg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I[I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
