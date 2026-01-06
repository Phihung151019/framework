.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;
.super Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final greylist mHandler:Landroid/os/Handler;

.field greylist mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

.field final synthetic greylist this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public static bridge synthetic greylist -$$Nest$mgetListener(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/samsung/android/knox/sdp/SdpStateListener;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V
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

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    new-instance p2, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/samsung/android/knox/sdp/SdpUtil;)V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor greylist <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V

    return-void
.end method

.method private greylist getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    return-object p0
.end method


# virtual methods
.method public greylist onEngineRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    return-void
.end method

.method public greylist onStateChange(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->getMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    return-void
.end method
