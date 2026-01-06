.class public Lcom/samsung/vekit/Control/VEAnalyzer;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;,
        Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    }
.end annotation


# instance fields
.field private analyzedTime:J

.field private final eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

.field private info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

.field private isAnalyzing:Z

.field listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

.field solutionLoadChecker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/vekit/Common/Type/AnalyzeType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 43
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANALYZER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Analyzer"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 44
    iput-boolean v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    invoke-direct {v0, p0, p2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;-><init>(Lcom/samsung/vekit/Control/VEAnalyzer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    .line 52
    :goto_0
    sget-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/vekit/Control/VEAnalyzer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEAnalyzer;

    .line 20
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEAnalyzer;

    .line 20
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    return-object v0
.end method


# virtual methods
.method public getCurrentAnalyzedPosition()J
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getCurrentAnalyzedPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    .line 97
    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    return-wide v0
.end method

.method public getInfo()Lcom/samsung/vekit/Common/Object/AnalyzeInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    return-object v0
.end method

.method isAnalyzing()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    return v0
.end method

.method public isSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)Z
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 124
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->isSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solution is already loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    .line 113
    return-void
.end method

.method public onEvent(IIII)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 101
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    .line 88
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pauseAnalyze()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    .line 89
    return-void
.end method

.method public resume()V
    .locals 3

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    .line 83
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resumeAnalyze(J)V

    .line 84
    return-void
.end method

.method public setInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    .line 61
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    .line 62
    sget-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 63
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V

    .line 64
    return-void
.end method

.method public setListener(Lcom/samsung/vekit/Listener/AnalyzeStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    .line 67
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    .line 68
    return-void
.end method

.method public start()V
    .locals 2

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    .line 73
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->startAnalyze()V

    .line 74
    return-void
.end method

.method public stop()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stopAnalyze()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    .line 79
    return-void
.end method

.method public unloadSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->isSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solution is already unloaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    .line 121
    return-void
.end method
