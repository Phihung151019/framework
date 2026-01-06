.class Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelData"
.end annotation


# instance fields
.field frequency:I

.field hitTime:J

.field totalCount:I


# direct methods
.method constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->hitTime:J

    .line 7
    .line 8
    iput p4, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->totalCount:I

    .line 9
    .line 10
    return-void
.end method
