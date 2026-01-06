.class public Lcom/samsung/vekit/Item/VideoItem;
.super Lcom/samsung/vekit/Item/Item;
.source "VideoItem.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;
.implements Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Item/Item;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Item/VideoItem;",
        ">;",
        "Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface<",
        "Lcom/samsung/vekit/Item/VideoItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field protected enableDeflicker:Z

.field protected enableFRC:Z

.field protected endContentTime:J

.field protected fadeInDuration:J

.field protected fadeOutDuration:J

.field protected filter:Lcom/samsung/vekit/Common/Object/Filter;

.field protected filterIntensity:F

.field protected filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

.field protected logProfile:Lcom/samsung/vekit/Common/Object/LogProfile;

.field protected opacity:F

.field protected pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

.field protected speakerIDInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected startContentTime:J

.field protected toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

.field protected volume:I


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/vekit/Item/VideoItem;->volume:I

    .line 34
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterIntensity:F

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/vekit/Item/VideoItem;->opacity:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableDeflicker:Z

    .line 41
    iput-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableFRC:Z

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeInDuration:J

    .line 45
    iput-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeOutDuration:J

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    .line 55
    new-instance v0, Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ToneInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 58
    return-void
.end method


# virtual methods
.method public addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "audioSegment"    # Lcom/samsung/vekit/Common/Object/AudioSegment;

    .line 291
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public bridge synthetic addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public addSpeakerIDInfo(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "speakerIDInfo"    # Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    .line 198
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
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

    .line 62
    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    .line 64
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set video(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAudioSegment()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 302
    return-void
.end method

.method public bridge synthetic clearRegions()Lcom/samsung/vekit/Item/Item;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/vekit/Item/VideoItem;->clearRegions()Lcom/samsung/vekit/Item/VideoItem;

    move-result-object v0

    return-object v0
.end method

.method public clearRegions()Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/samsung/vekit/Item/Item;->clearRegions()Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public clearSpeakerIDInfo()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 209
    return-void
.end method

.method public getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

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

    .line 276
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAudioSegmentMapSize()I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getEndContentTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->endContentTime:J

    return-wide v0
.end method

.method public getFadeInDuration()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeInDuration:J

    return-wide v0
.end method

.method public getFadeOutDuration()J
    .locals 2

    .line 257
    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeOutDuration:J

    return-wide v0
.end method

.method public getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object v0
.end method

.method public getFilterIntensity()F
    .locals 1

    .line 151
    iget v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterIntensity:F

    return v0
.end method

.method public getFilterOption()Lcom/samsung/vekit/Common/Object/FilterOption;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-object v0
.end method

.method public getLogProfile()Lcom/samsung/vekit/Common/Object/LogProfile;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->logProfile:Lcom/samsung/vekit/Common/Object/LogProfile;

    return-object v0
.end method

.method public getMeshType()Lcom/samsung/vekit/Common/Type/MeshType;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/samsung/vekit/Item/VideoItem;->opacity:F

    return v0
.end method

.method public getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

    return-object v0
.end method

.method public getSpeakerIDInfo(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

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

    .line 183
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSpeakerIDInfoMapSize()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStartContentTime()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->startContentTime:J

    return-wide v0
.end method

.method public getToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;)I
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;

    .line 179
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;->getTone(Lcom/samsung/vekit/Common/Type/ToneType;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getVolume()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/vekit/Item/VideoItem;->volume:I

    return v0
.end method

.method public isEnableDeflicker()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableDeflicker:Z

    return v0
.end method

.method public isEnableFRC()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableFRC:Z

    return v0
.end method

.method synthetic lambda$loadAudioSegment$0$com-samsung-vekit-Item-VideoItem(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "audioSegment"    # Lcom/samsung/vekit/Common/Object/AudioSegment;

    .line 269
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Object/AudioSegment;->clone()Lcom/samsung/vekit/Common/Object/AudioSegment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadAudioSegment()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->TAG:Ljava/lang/String;

    const-string v1, "loadAudioSegment()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->content:Lcom/samsung/vekit/Content/Content;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->TAG:Ljava/lang/String;

    const-string v1, "Failed loadAudioSegment(), content is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/Video;->getAudioSegmentMap()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/VideoItem;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/vekit/Item/VideoItem;->update()V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public removeAudioSegment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public bridge synthetic removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public removeSpeakerIDInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
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

    .line 281
    .local p1, "audioSegmentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    .line 282
    return-void
.end method

.method public bridge synthetic setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 3
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Item/VideoItem;->TAG:Ljava/lang/String;

    const-string v2, "setContent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->setDuration(J)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "duration"    # J

    .line 89
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public setEnableDeflicker(Z)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "enableDeflicker"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/samsung/vekit/Item/VideoItem;->enableDeflicker:Z

    .line 230
    return-object p0
.end method

.method public setEnableFRC(Z)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "enableFRC"    # Z

    .line 238
    iput-boolean p1, p0, Lcom/samsung/vekit/Item/VideoItem;->enableFRC:Z

    .line 239
    return-object p0
.end method

.method public setEndContentTime(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "endContentTime"    # J

    .line 125
    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->endContentTime:J

    .line 126
    return-object p0
.end method

.method public setFadeInDuration(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "duration"    # J

    .line 243
    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeInDuration:J

    .line 244
    return-object p0
.end method

.method public setFadeOutDuration(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "duration"    # J

    .line 252
    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeOutDuration:J

    .line 253
    return-object p0
.end method

.method public bridge synthetic setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "filter"    # Lcom/samsung/vekit/Common/Object/Filter;

    .line 145
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    .line 146
    return-object p0
.end method

.method public bridge synthetic setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setFilterIntensity(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setFilterIntensity(F)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "filterIntensity"    # F

    .line 156
    iput p1, p0, Lcom/samsung/vekit/Item/VideoItem;->filterIntensity:F

    .line 157
    return-object p0
.end method

.method public setFilterOption(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0
    .param p1, "filterOption"    # Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 319
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 320
    return-void
.end method

.method public setLogProfile(Lcom/samsung/vekit/Common/Object/LogProfile;)V
    .locals 0
    .param p1, "logProfile"    # Lcom/samsung/vekit/Common/Object/LogProfile;

    .line 327
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->logProfile:Lcom/samsung/vekit/Common/Object/LogProfile;

    .line 328
    return-void
.end method

.method public setMeshType(Lcom/samsung/vekit/Common/Type/MeshType;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "meshType"    # Lcom/samsung/vekit/Common/Type/MeshType;

    .line 216
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    .line 217
    return-object p0
.end method

.method public bridge synthetic setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setOpacity(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOpacity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setOpacity(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setOpacity(F)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "opacity"    # F

    .line 167
    iput p1, p0, Lcom/samsung/vekit/Item/VideoItem;->opacity:F

    .line 168
    return-object p0
.end method

.method public bridge synthetic setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->setPadding(J)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setPadding(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "padding"    # J

    .line 84
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public bridge synthetic setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "parent"    # Lcom/samsung/vekit/Layer/Layer;

    .line 68
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public setPcmInfoListener(Lcom/samsung/vekit/Listener/PcmInfoListener;)V
    .locals 0
    .param p1, "pcmInfoListener"    # Lcom/samsung/vekit/Listener/PcmInfoListener;

    .line 315
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

    .line 316
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

    .line 188
    .local p1, "speakerIDInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    .line 189
    return-void
.end method

.method public bridge synthetic setSpeed(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setSpeed(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setSpeed(F)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "speed"    # F

    .line 94
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setSpeed(F)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public setStartContentTime(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "startContentTime"    # J

    .line 116
    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->startContentTime:J

    .line 117
    return-object p0
.end method

.method public bridge synthetic setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;
    .param p2, "intensity"    # I

    .line 173
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/Object/ToneInfo;->setTone(Lcom/samsung/vekit/Common/Type/ToneType;I)V

    .line 174
    return-object p0
.end method

.method public setVolume(I)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0
    .param p1, "volume"    # I

    .line 134
    iput p1, p0, Lcom/samsung/vekit/Item/VideoItem;->volume:I

    .line 135
    return-object p0
.end method
