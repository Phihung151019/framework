.class public Lcom/android/commands/uinput/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uinput/Event$Command;,
        Lcom/android/commands/uinput/Event$Builder;,
        Lcom/android/commands/uinput/Event$UinputControlCode;
    }
.end annotation


# static fields
.field public static final EV_ABS:I = 0x3

.field public static final EV_FF:I = 0x15

.field public static final EV_KEY:I = 0x1

.field public static final EV_LED:I = 0x11

.field public static final EV_MSC:I = 0x4

.field public static final EV_REL:I = 0x2

.field public static final EV_SND:I = 0x12

.field public static final EV_SW:I = 0x5

.field public static final EV_SYN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UinputEvent"


# instance fields
.field private mAbsInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBusId:I

.field private mCommand:Lcom/android/commands/uinput/Event$Command;

.field private mConfiguration:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDurationNanos:J

.field private mFfEffectsMax:I

.field private mId:I

.field private mInjections:[I

.field private mInputPort:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProductId:I

.field private mSyncToken:Ljava/lang/String;

.field private mTimestampOffsetMicros:J

.field private mVendorId:I

.field private mVersionId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Lcom/android/commands/uinput/Event$Command;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mCommand:Lcom/android/commands/uinput/Event$Command;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Event;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDurationNanos(Lcom/android/commands/uinput/Event;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/commands/uinput/Event;->mDurationNanos:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/uinput/Event;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/uinput/Event;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjections(Lcom/android/commands/uinput/Event;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncToken(Lcom/android/commands/uinput/Event;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mSyncToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAbsInfo(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mAbsInfo:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBusId(Lcom/android/commands/uinput/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/uinput/Event;->mBusId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCommand(Lcom/android/commands/uinput/Event;Lcom/android/commands/uinput/Event$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mCommand:Lcom/android/commands/uinput/Event$Command;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConfiguration(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDurationNanos(Lcom/android/commands/uinput/Event;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/commands/uinput/Event;->mDurationNanos:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFfEffectsMax(Lcom/android/commands/uinput/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmId(Lcom/android/commands/uinput/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/uinput/Event;->mId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInjections(Lcom/android/commands/uinput/Event;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputPort(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mInputPort:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmName(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProductId(Lcom/android/commands/uinput/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/uinput/Event;->mProductId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSyncToken(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mSyncToken:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimestampOffsetMicros(Lcom/android/commands/uinput/Event;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/commands/uinput/Event;->mTimestampOffsetMicros:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVendorId(Lcom/android/commands/uinput/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/uinput/Event;->mVendorId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVersionId(Lcom/android/commands/uinput/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/uinput/Event;->mVersionId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/uinput/Event;->mTimestampOffsetMicros:J

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    return-void
.end method


# virtual methods
.method public getAbsInfo()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mAbsInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getBus()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/commands/uinput/Event;->mBusId:I

    return v0
.end method

.method public getCommand()Lcom/android/commands/uinput/Event$Command;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mCommand:Lcom/android/commands/uinput/Event$Command;

    return-object v0
.end method

.method public getConfiguration()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDurationNanos()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/android/commands/uinput/Event;->mDurationNanos:J

    return-wide v0
.end method

.method public getFfEffectsMax()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/commands/uinput/Event;->mId:I

    return v0
.end method

.method public getInjections()[I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mInputPort:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/commands/uinput/Event;->mProductId:I

    return v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mSyncToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampOffsetMicros()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/android/commands/uinput/Event;->mTimestampOffsetMicros:J

    return-wide v0
.end method

.method public getVendorId()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/commands/uinput/Event;->mVendorId:I

    return v0
.end method

.method public getVersionId()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/commands/uinput/Event;->mVersionId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mCommand:Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", busId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mBusId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    .line 194
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/commands/uinput/Event;->mDurationNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns, ff_effects_max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mInputPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    return-object v0
.end method
