.class public Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "WakeUpVoiceImpl.java"


# static fields
.field private static final MAXIMUM_BUFFER_SIZE:I = 0x1fffe

.field private static final MAXIMUM_RETRY_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "scontext.provider.caeprovider.WakeUpVoiceImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 72
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    .line 74
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 75
    return-void
.end method

.method private divideReferenceData(I[B)Z
    .locals 5
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 103
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 105
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const v2, 0x1fffe

    .line 108
    .local v2, "size":I
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 112
    :cond_1
    new-array v3, v2, [B

    .line 113
    .local v3, "dividedData":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    return v0

    .line 116
    .end local v3    # "dividedData":[B
    :cond_2
    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private sendReferenceDataToCAE(I[B)Z
    .locals 8
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 129
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 132
    .local v1, "cnt":I
    :goto_0
    const/4 v3, 0x0

    .line 133
    .local v3, "res":Z
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 134
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v3

    goto :goto_1

    .line 136
    :cond_1
    if-ne p1, v2, :cond_2

    .line 137
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v7, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v3

    .line 142
    :cond_2
    :goto_1
    add-int/2addr v1, v4

    .line 143
    if-eqz v3, :cond_3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "scontext.provider.caeprovider.WakeUpVoiceImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v4

    .line 147
    :cond_3
    const/4 v4, 0x5

    if-le v1, v4, :cond_4

    .line 148
    return v0

    .line 150
    .end local v3    # "res":Z
    :cond_4
    goto :goto_0

    .line 129
    .end local v1    # "cnt":I
    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 163
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "scontext.provider.caeprovider.WakeUpVoiceImpl"

    if-nez v0, :cond_0

    .line 165
    const-string v2, "setProperty() : attribute is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 168
    :cond_0
    const-string v2, "voice_mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    .line 169
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x35

    iget v5, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 171
    const-string v2, "setProperty()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public setReferenceData(I[B)Z
    .locals 2
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 86
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    array-length v0, p2

    const v1, 0x1fffe

    if-ge v0, v1, :cond_1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v0

    return v0

    .line 90
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;->divideReferenceData(I[B)Z

    move-result v0

    return v0
.end method
