.class Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SsdpMSearchArg"
.end annotation


# instance fields
.field mSeq:I

.field mTargetAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;->mSeq:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$SsdpMSearchArg;->mTargetAddress:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
