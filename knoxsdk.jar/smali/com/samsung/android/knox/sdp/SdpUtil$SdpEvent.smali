.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpEvent"
.end annotation


# static fields
.field static final greylist ON_ENGINE_REMOVED:I = 0x2

.field static final greylist ON_STATE_CHANGED:I = 0x1


# instance fields
.field private greylist mMessage:Landroid/os/Message;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public greylist getMessage()Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    return-object p0
.end method
