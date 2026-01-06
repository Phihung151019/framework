.class public Lcom/android/internal/telephony/VendorConfigurationTracker;
.super Landroid/os/Handler;
.source "VendorConfigurationTracker.java"


# static fields
.field public static final blacklist NOT_SUPPORT:Ljava/lang/String; = "0"

.field public static final blacklist SUPPORT:Ljava/lang/String; = "1"


# instance fields
.field private greylist mConfigurationLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastSetConfiguration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private greylist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mVendorConfigState:Landroid/telephony/VendorConfigurationState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/SemCommandsInterface;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    .line 60
    new-instance p1, Landroid/telephony/VendorConfigurationState;

    invoke-direct {p1}, Landroid/telephony/VendorConfigurationState;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    .line 61
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForVendorConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x4

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfiguration(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getVendorConfiguration(Landroid/os/Message;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 187
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getVendorSpecificConfiguration(Landroid/os/Message;)V

    return-void
.end method

.method private final greylist log(Ljava/lang/String;)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VCT"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifySystemConfigChanged(Lcom/android/internal/telephony/SemVendorConfiguration;)V
    .locals 1

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist onVendorConfigurationChanged(Landroid/os/AsyncResult;)V
    .locals 0

    .line 157
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist parseToString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 255
    const-string p0, "1"

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method private blacklist processVendorConfiguration(Lcom/android/internal/telephony/SemVendorConfiguration;)V
    .locals 1

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationValue()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist processVendorConfigurationList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfiguration(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist setConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/VendorConfigurationState;->setData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setSingleConfigurationData(Lcom/android/internal/telephony/SemVendorConfiguration;)V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 204
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfiguration(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    .line 206
    iget-object v4, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setVendorConfiguration(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist setVendorConfiguration(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V

    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForVendorConfigurationChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getConfigData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {p0, p1}, Landroid/telephony/VendorConfigurationState;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getConfigDataAsBool(Ljava/lang/String;)Z
    .locals 1

    .line 236
    const-string v0, "1"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getConfigDataAsInt(Ljava/lang/String;)I
    .locals 0

    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;
    .locals 1

    .line 182
    new-instance v0, Landroid/telephony/VendorConfigurationState;

    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-direct {v0, p0}, Landroid/telephony/VendorConfigurationState;-><init>(Landroid/telephony/VendorConfigurationState;)V

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    .line 134
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 135
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_a

    .line 137
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastSetConfiguration size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mConfigurationLists.size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    return-void

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 146
    :catch_0
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 121
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 122
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 123
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {v0}, Landroid/telephony/VendorConfigurationState;->toString()Ljava/lang/String;

    .line 127
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_a

    .line 128
    const-string p1, "EVENT_INIT_GET_VENDOR_CONFIGURATION: set framework ready"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 129
    const-string p1, "FW_READY"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setConfigData(Ljava/lang/String;Z)V

    return-void

    .line 75
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 76
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_a

    .line 77
    const-string v0, "CA_ENABLED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsBool(Ljava/lang/String;)Z

    move-result v2

    .line 78
    const-string v3, "MSIM_SUBMODE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsInt(Ljava/lang/String;)I

    move-result v4

    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->onVendorConfigurationChanged(Landroid/os/AsyncResult;)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_VENDOR_CONFIGURATION_CHANGED: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsInt(Ljava/lang/String;)I

    move-result p1

    const/4 v5, 0x0

    if-eq v4, p1, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v5

    .line 85
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_7

    if-eqz p1, :cond_7

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object v4

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v7

    if-eqz v4, :cond_7

    const/4 v8, 0x0

    .line 91
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v9

    if-nez v9, :cond_7

    if-le v7, v1, :cond_7

    .line 92
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getNumberOfModemsWithSimultaneousVoiceConnections()I

    move-result v6

    if-le v6, v1, :cond_7

    .line 93
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_6

    :goto_1
    if-ge v5, v7, :cond_6

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Msim Submode Changed: enabledLogicalSlots = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 101
    iget-object v1, v4, Lcom/android/internal/telephony/RadioConfig;->mSimultaneousCallingSupportStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_7

    .line 102
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 108
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsBool(Ljava/lang/String;)Z

    move-result v0

    if-ne v2, v0, :cond_8

    if-eqz p1, :cond_a

    .line 109
    :cond_8
    const-string p1, "Vendor Configuration value is changed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_2

    .line 114
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->updateVendorConfiguration()V

    :cond_a
    :goto_2
    return-void
.end method

.method blacklist needInitVendorConfiguration()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 262
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfiguration(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method blacklist notifyCarrierChanged(Ljava/lang/String;)V
    .locals 2

    .line 240
    new-instance v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    const-string v1, "CARRIER_CHANGED"

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->notifySystemConfigChanged(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    return-void
.end method

.method blacklist setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 215
    new-instance v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setSingleConfigurationData(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    return-void
.end method

.method blacklist setConfigData(Ljava/lang/String;Z)V
    .locals 0

    .line 219
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/VendorConfigurationTracker;->parseToString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setConfigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
