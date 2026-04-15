package com.umutamal.sirat_i_nur;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RemoteViews;
import es.antonborri.home_widget.HomeWidgetProvider;

public class QiblaWidgetProvider extends HomeWidgetProvider {

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, SharedPreferences widgetData) {
        for (int appWidgetId : appWidgetIds) {
            RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.widget_qibla);

            String header = widgetData.getString("qibla_header", "Qibla");
            String direction = widgetData.getString("qibla_direction", "--°");
            String status = widgetData.getString("qibla_status", "");

            views.setTextViewText(R.id.tv_qibla_header, header);
            views.setTextViewText(R.id.tv_qibla_direction, direction);
            views.setTextViewText(R.id.tv_qibla_status, status);

            appWidgetManager.updateAppWidget(appWidgetId, views);
        }
    }
}
