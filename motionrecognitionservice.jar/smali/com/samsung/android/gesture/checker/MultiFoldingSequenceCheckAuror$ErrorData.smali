.class Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
.super Ljava/lang/Object;
.source "MultiFoldingSequenceCheckAuror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorData"
.end annotation


# instance fields
.field count:I

.field dateTime:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->count:I

    .line 291
    return-void
.end method


# virtual methods
.method public setValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .line 294
    iput p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->count:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->dateTime:Ljava/lang/String;

    .line 296
    iput-object p4, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->type:Ljava/lang/String;

    .line 297
    return-void
.end method
