.class public Lcom/samsung/vekit/Common/Object/AnalyzeInfo;
.super Ljava/lang/Object;
.source "AnalyzeInfo.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnalyzeStatusListener;


# instance fields
.field private analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

.field private analyzedDataPath:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private target:Lcom/samsung/vekit/Common/Object/Element;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Content/Content;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "analyzeType"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .param p2, "targetContent"    # Lcom/samsung/vekit/Content/Content;
    .param p3, "analyzedDataPath"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 17
    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    .line 18
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Item/Item;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "analyzeType"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .param p2, "targetItem"    # Lcom/samsung/vekit/Item/Item;
    .param p3, "analyzedDataPath"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 24
    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    .line 25
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAnalyzeType()Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    return-object v0
.end method

.method public getAnalyzedDataPath()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public onAnalyzeCompleted()V
    .locals 0

    .line 79
    return-void
.end method

.method public onAnalyzeFailed()V
    .locals 0

    .line 89
    return-void
.end method

.method public onAnalyzePaused()V
    .locals 0

    .line 74
    return-void
.end method

.method public onAnalyzeResumed()V
    .locals 0

    .line 69
    return-void
.end method

.method public onAnalyzeStarted()V
    .locals 0

    .line 64
    return-void
.end method

.method public onAnalyzeStopped()V
    .locals 0

    .line 84
    return-void
.end method

.method public onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .param p2, "errorType"    # Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    .line 104
    return-void
.end method

.method public onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 94
    return-void
.end method

.method public onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 99
    return-void
.end method

.method public setAnalyzeType(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 0
    .param p1, "analyzeType"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 34
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 35
    return-void
.end method

.method public setAnalyzedDataPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "analyzedDataPath"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 0
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 42
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    .line 43
    return-void
.end method
