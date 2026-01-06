.class public Lcom/samsung/vekit/Item/AudioItem;
.super Lcom/samsung/vekit/Item/Item;
.source "AudioItem.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;
.implements Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Item/Item;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Item/AudioItem;",
        ">;",
        "Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface<",
        "Lcom/samsung/vekit/Item/AudioItem;",
        ">;"
    }
.end annotation


# instance fields
.field private audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field private endContentTime:J

.field private fadeInDuration:J

.field private fadeOutDuration:J

.field private pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

.field private speakerIDInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private startContentTime:J

.field private volume:I


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    .line 21
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/vekit/Item/AudioItem;->volume:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Item/AudioItem;->fadeInDuration:J

    .line 25
    iput-wide v0, p0, Lcom/samsung/vekit/Item/AudioItem;->fadeOutDuration:J

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "audioSegment"    # Lcom/samsung/vekit/Common/Object/AudioSegment;

    .line 195
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/AudioItem;
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/AudioItem;->addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public addSpeakerIDInfo(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "speakerIDInfo"    # Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    .line 98
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 2
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->AUDIO:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    .line 39
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set audio(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAudioSegment()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 206
    return-void
.end method

.method public clearRegions()Lcom/samsung/vekit/Item/AudioItem;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/samsung/vekit/Item/Item;->clearRegions()Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic clearRegions()Lcom/samsung/vekit/Item/Item;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/samsung/vekit/Item/AudioItem;->clearRegions()Lcom/samsung/vekit/Item/AudioItem;

    move-result-object v0

    return-object v0
.end method

.method public clearSpeakerIDInfo()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    return-void
.end method

.method public getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    return-object v0
.end method

.method public getAudioSegmentMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAudioSegmentMapSize()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getEndContentTime()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/samsung/vekit/Item/AudioItem;->endContentTime:J

    return-wide v0
.end method

.method public getFadeInDuration()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/samsung/vekit/Item/AudioItem;->fadeInDuration:J

    return-wide v0
.end method

.method public getFadeOutDuration()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/samsung/vekit/Item/AudioItem;->fadeOutDuration:J

    return-wide v0
.end method

.method public getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

    return-object v0
.end method

.method public getSpeakerIDInfo(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    return-object v0
.end method

.method public getSpeakerIDInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSpeakerIDInfoMapSize()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStartContentTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/samsung/vekit/Item/AudioItem;->startContentTime:J

    return-wide v0
.end method

.method public getVolume()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/vekit/Item/AudioItem;->volume:I

    return v0
.end method

.method synthetic lambda$loadAudioSegment$0$com-samsung-vekit-Item-AudioItem(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "audioSegment"    # Lcom/samsung/vekit/Common/Object/AudioSegment;

    .line 174
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Object/AudioSegment;->clone()Lcom/samsung/vekit/Common/Object/AudioSegment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadAudioSegment()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->TAG:Ljava/lang/String;

    const-string v1, "loadAudioSegment()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->content:Lcom/samsung/vekit/Content/Content;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->TAG:Ljava/lang/String;

    const-string v1, "Failed loadAudioSegment(), content is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 173
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/Audio;

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/Audio;->getAudioSegmentMap()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/vekit/Item/AudioItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Item/AudioItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/AudioItem;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public removeAudioSegment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/AudioItem;
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/AudioItem;->removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public removeSpeakerIDInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setAudioSegmentMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "audioSegmentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Item/AudioItem;->audioSegmentMap:Ljava/util/HashMap;

    .line 186
    return-void
.end method

.method public setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/AudioItem;
    .locals 3
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;

    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/AudioItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Item/AudioItem;->TAG:Ljava/lang/String;

    const-string v2, "setContent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    return-object p0
.end method

.method public bridge synthetic setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/AudioItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Item/AudioItem;
    .locals 1
    .param p1, "duration"    # J

    .line 64
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/AudioItem;->setDuration(J)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public setEndContentTime(J)Lcom/samsung/vekit/Item/AudioItem;
    .locals 0
    .param p1, "endContentTime"    # J

    .line 134
    iput-wide p1, p0, Lcom/samsung/vekit/Item/AudioItem;->endContentTime:J

    .line 135
    return-object p0
.end method

.method public setFadeInDuration(J)Lcom/samsung/vekit/Item/AudioItem;
    .locals 0
    .param p1, "duration"    # J

    .line 148
    iput-wide p1, p0, Lcom/samsung/vekit/Item/AudioItem;->fadeInDuration:J

    .line 149
    return-object p0
.end method

.method public setFadeOutDuration(J)Lcom/samsung/vekit/Item/AudioItem;
    .locals 0
    .param p1, "duration"    # J

    .line 157
    iput-wide p1, p0, Lcom/samsung/vekit/Item/AudioItem;->fadeOutDuration:J

    .line 158
    return-object p0
.end method

.method public setPadding(J)Lcom/samsung/vekit/Item/AudioItem;
    .locals 1
    .param p1, "padding"    # J

    .line 59
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/AudioItem;->setPadding(J)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/AudioItem;
    .locals 1
    .param p1, "parent"    # Lcom/samsung/vekit/Layer/Layer;

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/AudioItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public setPcmInfoListener(Lcom/samsung/vekit/Listener/PcmInfoListener;)V
    .locals 0
    .param p1, "pcmInfoListener"    # Lcom/samsung/vekit/Listener/PcmInfoListener;

    .line 218
    iput-object p1, p0, Lcom/samsung/vekit/Item/AudioItem;->pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

    .line 219
    return-void
.end method

.method public setSpeakerIDInfoMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "speakerIDInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Item/AudioItem;->speakerIDInfoMap:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method public setSpeed(F)Lcom/samsung/vekit/Item/AudioItem;
    .locals 1
    .param p1, "speed"    # F

    .line 69
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setSpeed(F)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/AudioItem;

    return-object v0
.end method

.method public bridge synthetic setSpeed(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/AudioItem;->setSpeed(F)Lcom/samsung/vekit/Item/AudioItem;

    move-result-object p1

    return-object p1
.end method

.method public setStartContentTime(J)Lcom/samsung/vekit/Item/AudioItem;
    .locals 0
    .param p1, "startContentTime"    # J

    .line 125
    iput-wide p1, p0, Lcom/samsung/vekit/Item/AudioItem;->startContentTime:J

    .line 126
    return-object p0
.end method

.method public setVolume(I)Lcom/samsung/vekit/Item/AudioItem;
    .locals 0
    .param p1, "volume"    # I

    .line 143
    iput p1, p0, Lcom/samsung/vekit/Item/AudioItem;->volume:I

    .line 144
    return-object p0
.end method
