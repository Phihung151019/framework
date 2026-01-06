.class public Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;
.super Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;
.source "SehHdrSolutionService.java"


# static fields
.field private static final HANDLER_MSG_HLG:I = 0xc8

.field private static final HANDLER_MSG_PQ_NETFLIX:I = 0xc9

.field private static final HANDLER_MSG_PQ_NON_NETFLIX:I = 0xca

.field private static final HANDLER_MSG_START_HW_HDR:I = 0x64

.field private static final HANDLER_MSG_STOP_HW_HDR:I = 0x65

.field public static final SERVICE_VERSION:Ljava/lang/String; = "2.1"

.field private static final TAG:Ljava/lang/String; = "SehHdrSolutionService"

.field private static mDataspace:I

.field private static mNetflixView:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHdrDisplayController:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

.field private mHdrDisplayNitMapper:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

.field private mLogLevel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHdrDisplayController(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
    .locals 0

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayController:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHdrDisplayNitMapper(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
    .locals 0

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayNitMapper:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetmDataspace()I
    .locals 1

    sget v0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mDataspace:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmNetflixView()I
    .locals 1

    sget v0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mNetflixView:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmDataspace(I)V
    .locals 0

    sput p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mDataspace:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmNetflixView(I)V
    .locals 0

    sput p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mNetflixView:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput v0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mDataspace:I

    .line 40
    sput v0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mNetflixView:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Landroid/app/IActivityManager;

    .line 47
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    .line 48
    const-string v0, "SehHdrSolutionService"

    const-string v1, "create : 2.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.hdr.log.service"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    .line 50
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayController:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    .line 51
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {v0, p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHdrDisplayNitMapper:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    .line 52
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;-><init>(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 164
    const-string v0, "3c5bf9af1b4acf79c7078830ff46fa13f1c1af7f"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 159
    const/4 v0, 0x3

    return v0
.end method

.method public updateHdrInfo(I)V
    .locals 4
    .param p1, "dataspace"    # I

    .line 112
    shr-int/lit8 v0, p1, 0x16

    and-int/lit8 v0, v0, 0x1f

    .line 114
    .local v0, "mHLG":I
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    const-string v2, "SehHdrSolutionService"

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHdrInfo - mHLG: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 117
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    if-lez v1, :cond_1

    const-string v1, "updateHdrInfo - HLG case"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    goto :goto_0

    .line 121
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    if-lez v1, :cond_3

    const-string v1, "updateHdrInfo - PQ case"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 125
    .restart local v1    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method

.method public updateHdrInfo2(II)V
    .locals 5
    .param p1, "dataspace"    # I
    .param p2, "netflix"    # I

    .line 134
    shr-int/lit8 v0, p1, 0x16

    and-int/lit8 v0, v0, 0x1f

    .line 135
    .local v0, "mHLG":I
    and-int/lit8 v1, p2, 0x1

    .line 137
    .local v1, "mNetflix":I
    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    const-string v3, "SehHdrSolutionService"

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHdrInfo - mHLG: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Netflix: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 140
    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    if-lez v2, :cond_1

    const-string v2, "updateHdrInfo - HLG case, No Netflix"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    goto :goto_0

    .line 144
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 145
    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    if-lez v2, :cond_3

    const-string v2, "updateHdrInfo - PQ case, Netflix!!!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 149
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mLogLevel:I

    if-lez v2, :cond_5

    const-string v2, "updateHdrInfo - PQ casem, No Netflix"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 154
    .restart local v2    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method public updateHdrLayerState(Z)V
    .locals 2
    .param p1, "started"    # Z

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    goto :goto_0

    .line 101
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 103
    .restart local v0    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method
