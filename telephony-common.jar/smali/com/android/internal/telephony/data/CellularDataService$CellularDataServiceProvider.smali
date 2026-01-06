.class Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CellularDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellularDataServiceProvider"
.end annotation


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/CellularDataService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoResultCode(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Ljava/lang/Throwable;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->toResultCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularDataService;I)V
    .locals 3
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

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/data/CellularDataService;

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 79
    invoke-virtual {p0}, Landroid/telephony/data/DataService$DataServiceProvider;->getSlotIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;-><init>(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/data/CellularDataService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 142
    iget-object p0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p1, 0x6

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    iget-object p0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x9

    invoke-interface {p0, v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForApnUnthrottled(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularDataService;ILcom/android/internal/telephony/data/CellularDataService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/data/CellularDataService;I)V

    return-void
.end method

.method private blacklist toResultCode(Ljava/lang/Throwable;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 161
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/data/CellularDataService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throwable is of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but should be CommandException"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService;->-$$Nest$mloge(Lcom/android/internal/telephony/data/CellularDataService;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public blacklist cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->cancelHandover(Landroid/os/Message;I)V

    return-void
.end method

.method public whitelist test-api close()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    return-void
.end method

.method public whitelist requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 231
    iget-object p2, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 235
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/data/CellularDataService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataProfile dataProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/CellularDataService;->-$$Nest$mloge(Lcom/android/internal/telephony/data/CellularDataService;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p3, 0x0

    new-array p3, p3, [Landroid/telephony/data/DataProfile;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/data/DataProfile;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Landroid/telephony/data/DataProfile;Landroid/os/Message;)V

    return-void
.end method

.method public whitelist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 214
    iget-object p2, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 218
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Landroid/telephony/data/DataProfile;Landroid/os/Message;)V

    return-void
.end method

.method public whitelist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 13

    move-object/from16 v0, p11

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v12, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v3, p1

    move-object v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist startHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->startHandover(Landroid/os/Message;I)V

    return-void
.end method
