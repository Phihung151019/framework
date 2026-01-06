.class public final synthetic Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 6
    .line 7
    check-cast p2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 8
    .line 9
    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->$r8$lambda$EOtzmc2_77DqVrIvWIRCGN3UjGA(IILcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
