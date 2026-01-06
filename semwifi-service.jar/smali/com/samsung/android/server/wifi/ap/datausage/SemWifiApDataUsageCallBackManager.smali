.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;
    }
.end annotation


# static fields
.field private static final MAX_CLIENT_LIST_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SemWifiApDataUsageCallBackManager"


# instance fields
.field private mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7mJg2r5hmtHF4xnA-I0kOyMbgDw(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->lambda$registerClientDataUsageCallback$1(Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$rIbPwGY49-tc0V-PAqaPKeulUV4(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;ILcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->lambda$registerClientListDataUsageCallback$0(ILcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    return-void
.end method

.method private synthetic lambda$registerClientDataUsageCallback$1(Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->processClientDataUsageCallbackRegistration(Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$registerClientListDataUsageCallback$0(ILcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->processClientListDataUsageCallbackRegistration(ILcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private processClientDataUsageCallbackRegistration(Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/util/Pair;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p2, "callback is already register with mac = "

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "client callback is already register with another parameters, updating it with new one (old = "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", new = "

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ")"

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/util/List;

    .line 106
    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_1

    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    .line 122
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    .line 140
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    .line 158
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Ljava/util/List;

    .line 163
    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v1, "Client call back is registered with mac = "

    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, " , "

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    invoke-virtual {p4, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getDeepCopyClientDetailsObject(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;->onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method private processClientListDataUsageCallbackRegistration(ILcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;

    .line 2
    .line 3
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/util/Pair;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "callback is already register with same parameters"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "callback is already regsiter with another parameters, updating it with new one"

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/List;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/util/List;

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance p0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p5, p3, p4, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getTopHotspotClientsToday(IILjava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    :try_start_0
    invoke-interface {p2, p0, p6, p7}, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;->onClientListUpdated(Ljava/util/List;J)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p2, p8, p9}, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;->onOverallDataLimitChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string p3, "callback is registered for parameters "

    .line 151
    .line 152
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p3, ", "

    .line 163
    .line 164
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private syncAllClientListDataUsageRegisterCallback(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/List;

    .line 42
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->getTopConnectedAndDisconnectedParam()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->getMaxListLengthParam()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p1, v4, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getTopHotspotClientsToday(IILjava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/Integer;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    sget-object v4, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v6, "sync data usage callback for "

    .line 91
    .line 92
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroid/util/Pair;

    .line 116
    .line 117
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;

    .line 120
    .line 121
    :try_start_0
    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;->onClientListUpdated(Ljava/util/List;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method

.method private syncAllClientRegisterCallback(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getDeepCopyClientDetailsObject(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Integer;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    sget-object v5, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v7, "sync for client id = "

    .line 79
    .line 80
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v7, ", mac = "

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Landroid/util/Pair;

    .line 112
    .line 113
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v4, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    .line 116
    .line 117
    :try_start_0
    invoke-interface {v4, v3}, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;->onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v4

    .line 122
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method


# virtual methods
.method registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "Binder must not be null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "Callback must not be null"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    if-nez p4, :cond_2

    .line 22
    .line 23
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, "client mac is null"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Landroid/os/IBinder;I)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    move-object v1, p0

    .line 51
    move-object v2, p2

    .line 52
    move v3, p3

    .line 53
    move-object v4, p4

    .line 54
    move-object v5, p5

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    move-object p0, v0

    .line 64
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string p2, "Error on linkToDeath - "

    .line 67
    .line 68
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IIILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V
    .locals 11

    .line 1
    move/from16 v5, p5

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p1, "Binder must not be null"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "Callback must not be null"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    if-gt p4, v5, :cond_3

    .line 24
    .line 25
    if-ltz p4, :cond_3

    .line 26
    .line 27
    if-ltz v5, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x64

    .line 30
    .line 31
    if-ge v5, v0, :cond_3

    .line 32
    .line 33
    if-nez p4, :cond_2

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Landroid/os/IBinder;I)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    move-object v3, p2

    .line 59
    move v2, p3

    .line 60
    move v4, p4

    .line 61
    move-object/from16 v6, p6

    .line 62
    .line 63
    move-wide/from16 v7, p7

    .line 64
    .line 65
    move-wide/from16 v9, p9

    .line 66
    .line 67
    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;ILcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;IILcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;JJ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    move-object p0, v0

    .line 76
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string p2, "Error on linkToDeath - "

    .line 79
    .line 80
    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string p2, "parameter passed are wrong ,topConnectedAndDisconnected="

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, ",maxListLength="

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllClientListDataUsageRegisterCallback(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllClientRegisterCallback(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method syncClientRegisterCallbackForGivenMac(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getDeepCopyClientDetailsObject(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "sync client callback id ="

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ", mac ="

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/util/Pair;

    .line 94
    .line 95
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    .line 98
    .line 99
    :try_start_0
    invoke-interface {v1, p2}, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;->onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method syncRegisterCallbackForDataLimit(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/util/Pair;

    .line 36
    .line 37
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;

    .line 40
    .line 41
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "sync datalimit for id = "

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;->onOverallDataLimitChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method unregisterClientDataUsageCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "client callback is already unregistered"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "client callback is unregister "

    .line 75
    .line 76
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method unregisterClientListDataUsageCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "callback was already unregister"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mClientListDataUsageRegisteredCallbackParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "unregisterClientListDataUsageCallback() size() after "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->mRegisteredClientListDataUsageCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p0, " id ="

    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method
