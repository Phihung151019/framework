.class public Lcom/android/commands/hid/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/hid/Event$Bus;,
        Lcom/android/commands/hid/Event$Reader;,
        Lcom/android/commands/hid/Event$Builder;
    }
.end annotation


# static fields
.field public static final COMMAND_DELAY:Ljava/lang/String; = "delay"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_REPORT:Ljava/lang/String; = "report"

.field public static final COMMAND_SEND_SET_REPORT_REPLY:Ljava/lang/String; = "send_set_report_reply"

.field public static final COMMAND_SET_GET_REPORT_RESPONSE:Ljava/lang/String; = "set_get_report_response"

.field private static final TAG:Ljava/lang/String; = "HidEvent"


# instance fields
.field private mBus:Lcom/android/commands/hid/Event$Bus;

.field private mCommand:Ljava/lang/String;

.field private mDescriptor:[B

.field private mDuration:I

.field private mFeatureReports:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mOutputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mPid:I

.field private mReply:Ljava/lang/Boolean;

.field private mReport:[B

.field private mUniq:Ljava/lang/String;

.field private mVid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDescriptor(Lcom/android/commands/hid/Event;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/commands/hid/Event;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/hid/Event;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/hid/Event;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/hid/Event;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReply(Lcom/android/commands/hid/Event;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mReply:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReport(Lcom/android/commands/hid/Event;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mReport:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBus(Lcom/android/commands/hid/Event;Lcom/android/commands/hid/Event$Bus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mBus:Lcom/android/commands/hid/Event$Bus;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCommand(Lcom/android/commands/hid/Event;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDescriptor(Lcom/android/commands/hid/Event;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDuration(Lcom/android/commands/hid/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/hid/Event;->mDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFeatureReports(Lcom/android/commands/hid/Event;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mFeatureReports:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmId(Lcom/android/commands/hid/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/hid/Event;->mId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmName(Lcom/android/commands/hid/Event;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOutputs(Lcom/android/commands/hid/Event;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mOutputs:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPid(Lcom/android/commands/hid/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/hid/Event;->mPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReply(Lcom/android/commands/hid/Event;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mReply:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReport(Lcom/android/commands/hid/Event;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mReport:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUniq(Lcom/android/commands/hid/Event;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mUniq:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVid(Lcom/android/commands/hid/Event;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/hid/Event;->mVid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smerror(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/commands/hid/Event;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 435
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    const-string v0, "HidEvent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-eqz p1, :cond_0

    .line 438
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    return-void
.end method


# virtual methods
.method public getBus()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mBus:Lcom/android/commands/hid/Event$Bus;

    invoke-virtual {v0}, Lcom/android/commands/hid/Event$Bus;->getValue()I

    move-result v0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/android/commands/hid/Event;->mDuration:I

    return v0
.end method

.method public getFeatureReports()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mFeatureReports:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/commands/hid/Event;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mOutputs:Ljava/util/Map;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/commands/hid/Event;->mPid:I

    return v0
.end method

.method public getReply()Ljava/lang/Boolean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mReply:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReport()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mReport:[B

    return-object v0
.end method

.method public getUniq()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mUniq:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/commands/hid/Event;->mVid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uniq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mUniq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mVid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mBus:Lcom/android/commands/hid/Event$Bus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mReport:[B

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature_reports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mFeatureReports:Landroid/util/SparseArray;

    .line 132
    invoke-virtual {v1}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mOutputs:Ljava/util/Map;

    .line 133
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mReply:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method
