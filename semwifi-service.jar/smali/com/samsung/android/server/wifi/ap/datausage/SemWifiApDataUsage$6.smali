.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$misInsideHotspotScreen(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "inside hotspot screen"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "wifi_ap_last_active_sim"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "mSemWifiApHotspotScreenContentObs onChange() - lastActiveSimAccessed: "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ", mCurrentActiveSimSerialNumber: "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmCurrentActiveSimSerialNumber(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmCurrentActiveSimSerialNumber(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "sim_id_unknown"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmCurrentActiveSimSerialNumber(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_0

    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const v1, 0x104110d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 138
    .line 139
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmCurrentActiveSimSerialNumber(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p1, v0, p0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string p1, "outside hotspot screen"

    .line 152
    .line 153
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-void
.end method
