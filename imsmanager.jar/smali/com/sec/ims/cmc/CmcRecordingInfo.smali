.class public Lcom/sec/ims/cmc/CmcRecordingInfo;
.super Ljava/lang/Object;
.source "CmcRecordingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcRecordingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAudioChannels:I

.field mAudioEncoder:I

.field mAudioEncodingBitRate:I

.field mAudioSamplingRate:I

.field mAudioSource:I

.field mAuthor:Ljava/lang/String;

.field mDurationInterval:I

.field mFileSizeInterval:J

.field mMaxDuration:I

.field mMaxFileSize:J

.field mOutputFormat:I

.field mOutputPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/sec/ims/cmc/CmcRecordingInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcRecordingInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAudioChannels()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    return p0
.end method

.method public getAudioEncoder()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    return p0
.end method

.method public getAudioEncodingBitRate()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    return p0
.end method

.method public getAudioSamplingRate()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    return p0
.end method

.method public getAudioSource()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    return p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-object p0
.end method

.method public getDurationInterval()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    return p0
.end method

.method public getFileSizeInterval()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    return-wide v0
.end method

.method public getMaxDuration()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    return p0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    return-wide v0
.end method

.method public getOutputFormat()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    return p0
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioChannels(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-void
.end method

.method public setDurationInterval(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    return-void
.end method

.method public setFileSizeInterval(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v1, "CmcRecordingInfo = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mOutputFormat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mMaxFileSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mMaxDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mOutputPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioEncodingBitRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioChannels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioSamplingRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioEncoder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mDurationInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mFileSizeInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAuthor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 149
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
