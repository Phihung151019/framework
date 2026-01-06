.class public Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpusRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;


# direct methods
.method public constructor <init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OpusRunnable  : device MODEL_NAME("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$sfgetMODEL_NAME()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "SehCodecSolutionService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 30
    .line 31
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 32
    .line 33
    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 40
    .line 41
    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 52
    .line 53
    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    const-string v0, "v2 token is null, send msg to register"

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 69
    .line 70
    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmHandler(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/16 v2, 0xd2

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 81
    .line 82
    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmHandler(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 93
    .line 94
    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$sfgetMODEL_NAME()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/16 v3, 0x65

    .line 103
    .line 104
    invoke-virtual {v0, v2, v3}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isInOpusOffloadEnabledList(Ljava/lang/String;I)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 109
    .line 110
    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->setmOpusOffloadEnabledListToNull()V

    .line 115
    .line 116
    .line 117
    move-object p0, v0

    .line 118
    :goto_0
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 119
    .line 120
    const-string v2, "persist.audio.opusoffload.disable"

    .line 121
    .line 122
    if-ne p0, v0, :cond_1

    .line 123
    .line 124
    const-string p0, "FOUND enabled_model in json list!# Set OpusOffload enabled"

    .line 125
    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    const-string p0, "0"

    .line 130
    .line 131
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_1
    const-string p0, "NOT FOUND enabled_model in json list!# Set OpusOffload disabled"

    .line 136
    .line 137
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    const-string p0, "1"

    .line 141
    .line 142
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    const-string p0, "SCPMV2 is not available"

    .line 147
    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    return-void
.end method
