.class Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;
.super Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateChangeEvent"
.end annotation


# instance fields
.field public greylist state:I


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    iput p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->state:I

    return-void
.end method
