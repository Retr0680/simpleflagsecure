.class public Lcom/android/server/media/MediaRouterStatsLog;
.super Ljava/lang/Object;
.source "MediaRouterStatsLog.java"


# static fields
.field public static final ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final MEDIA_ROUTER_EVENT_REPORTED:I = 0x3f9

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_CREATE_SESSION:I = 0x1

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_CREATE_SYSTEM_ROUTING_SESSION:I = 0x2

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_DESELECT_ROUTE:I = 0x5

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_RELEASE_SESSION:I = 0x3

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_SCANNING_STARTED:I = 0x7

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_SCANNING_STOPPED:I = 0x8

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_SELECT_ROUTE:I = 0x4

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_TRANSFER_TO_ROUTE:I = 0x6

.field public static final MEDIA_ROUTER_EVENT_REPORTED__EVENT_TYPE__EVENT_TYPE_UNSPECIFIED:I = 0x0

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_DUPLICATE_SESSION_ID:I = 0xc

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_FAILED_TO_REROUTE_SYSTEM_MEDIA:I = 0x8

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_INVALID_COMMAND:I = 0x6

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_INVALID_ROUTE_ID:I = 0xa

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_INVALID_SESSION_ID:I = 0xb

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_MANAGER_RECORD_NOT_FOUND:I = 0x10

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_MEDIA_STREAM_CREATION_FAILED:I = 0xf

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_NETWORK_ERROR:I = 0x4

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_PERMISSION_DENIED:I = 0x9

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_PROVIDER_CALLBACK_ERROR:I = 0xd

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_REJECTED:I = 0x3

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_ROUTER_RECORD_NOT_FOUND:I = 0x11

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_ROUTE_NOT_AVAILABLE:I = 0x5

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_SUCCESS:I = 0x1

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_SYSTEM_SERVICE_ERROR:I = 0xe

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_UNIMPLEMENTED:I = 0x7

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_UNKNOWN_ERROR:I = 0x2

.field public static final MEDIA_ROUTER_EVENT_REPORTED__RESULT__RESULT_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(III)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .line 85
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 86
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 87
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 88
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 92
    return-void
.end method
