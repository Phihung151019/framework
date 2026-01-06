.class Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)I
    .locals 5

    .line 2
    iget p0, p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->totalCount:I

    iget v0, p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->totalCount:I

    const/4 v1, -0x1

    if-le p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ge p0, v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-wide p0, p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->hitTime:J

    iget-wide v3, p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->hitTime:J

    cmp-long p2, p0, v3

    if-lez p2, :cond_2

    return v1

    :cond_2
    cmp-long p0, p0, v3

    if-gez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    check-cast p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;->compare(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)I

    move-result p0

    return p0
.end method
