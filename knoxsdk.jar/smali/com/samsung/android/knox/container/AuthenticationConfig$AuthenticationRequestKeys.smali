.class public Lcom/samsung/android/knox/container/AuthenticationConfig$AuthenticationRequestKeys;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/AuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationRequestKeys"
.end annotation


# static fields
.field public static final greylist ADMIN_SERVER:Ljava/lang/String; = "REALMS_ADMIN_SERVER"

.field public static final greylist CANONICALIZE:Ljava/lang/String; = "LIBDEFAULTS_CANONICALIZE"

.field public static final greylist DEFAULT_DOMAIN:Ljava/lang/String; = "REALMS_DEFAULT_DOMAIN"

.field public static final greylist DEFAULT_REALM:Ljava/lang/String; = "LIBDEFAULTS_DEFAULT_REALM"

.field public static final greylist DNS_CANONICALIZE_HOSTNAME:Ljava/lang/String; = "LIBDEFAULTS_DNS_CANONICALIZE_HOSTNAME"

.field public static final greylist DNS_LOOKUP_KDC:Ljava/lang/String; = "LIBDEFAULTS_DNS_LOOKUP_KDC"

.field public static final greylist DNS_LOOKUP_REALM:Ljava/lang/String; = "LIBDEFAULTS_DNS_LOOKUP_REALM"

.field public static final greylist FEDERATION_SERVER_URL:Ljava/lang/String; = "FEDERATION_SERVER_URL"

.field public static final greylist FORWARDABLE:Ljava/lang/String; = "LIBDEFAULTS_FORWARDABLE"

.field public static final greylist KDC:Ljava/lang/String; = "REALMS_KDC"

.field public static final greylist KPASSWD_SERVER:Ljava/lang/String; = "REALMS_KPASSWD_SERVER"

.field public static final greylist KRB5_CONFIG_DATA:Ljava/lang/String; = "KRB5_CONFIG_DATA"

.field public static final greylist MASTER_KDC:Ljava/lang/String; = "REALMS_MASTER_KDC"

.field public static final greylist NOADDRESSES:Ljava/lang/String; = "LIBDEFAULTS_NOADDRESSES"

.field public static final greylist PKINIT_ANCHORS:Ljava/lang/String; = "REALMS_PKINIT_ANCHORS"

.field public static final greylist PKINIT_IDENTITIES:Ljava/lang/String; = "REALMS_PKINIT_IDENTITIES"

.field public static final greylist RDNS:Ljava/lang/String; = "LIBDEFAULTS_RDNS"

.field public static final greylist RENEW_LIFETIME:Ljava/lang/String; = "LIBDEFAULTS_RENEW_LIFETIME"

.field public static final greylist TICKET_LIFETIME:Ljava/lang/String; = "LIBDEFAULTS_TICKET_LIFETIME"

.field public static final greylist UDP_PREFERENCE_LIMIT:Ljava/lang/String; = "LIBDEFAULTS_UDP_PREFERENCE_LIMIT"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
